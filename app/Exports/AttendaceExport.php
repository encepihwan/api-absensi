<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;

class AttendaceExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $data;

    public function __construct($data)
    {
        // dd($data);
        $this->data = $data;
    }

    public function collection()
    {
        $collection = collect($this->data)->map(function ($item) {
            return [
                'name' => $item['user']['name'] ?? null,
                'userName' => $item['user']['userName'] ?? null,
                'full_address' =>    $item['full_address'] ?? null,
                'Project Name'  => $item['project']['name'] ?? null,
                'Project Number'  => $item['project']['projectNo'] ?? null,
                'latitude'   => $item['latitude'] ?? null,
                'longtitude'  => $item['longtitude'] ?? null,
                'date'       => $item['date'] ?? null,
                'time'       => $item['time'] ?? null,
                'type'       => $item['type'] ?? null,
                'status'     => $item['status'] ?? null,
                'project Id'  => $item['projectId'] ?? null,
                
            ];
        });

        // Add headers as the first row in the collection
        $withHeaders = collect([
            [
                'name',
                'userName',
                'full_address',
                'Project Name',
                'Project Number',
                'latitude',
                'longtitude',
                'date',
                'time',
                'type',
                'status',
                'projectId',
            ],
        ])->merge($collection);

        return $withHeaders;
        // return collect($this->data);
    }
}
