<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use App\Models\Customer;

class CustomerImport implements ToModel, WithHeadingRow
{
    private $count = 0;

    public function model(array $row)
    {
        try {
            if (!empty($row['email']) && Customer::organizer()->where(['email' => $row['email']])->doesntExist()) {
            
                $data = [
                    'email'   => $row['email'] ?? null,
                    'company' => $row['company'] ?? null,
                    'phone'   => $row['phone'] ?? null,
                    'fullname' => $row['fullname'] ?? null,
                    'contact' => $row['contact'] ?? null,
                    'address' => $row['address'] ?? null,
                    'organizer_id' => auth('organizer')->id() ?? null,
                    'company_organizer_id' => auth('organizer')->user()->company_id ?? null
                ];
                
                Customer::create($data);
                ++$this->count;
                
            }
        } catch (\Exception $e) {
            dd($row, $e->getMessage());
        }
    }

    public function getRowCount(): int
    {
        return $this->count;
    }
}
