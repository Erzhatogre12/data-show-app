@extends('layouts.app')


@section('content')
    <div class="col-md-8">
        @foreach ($dimensi as $item)
            {{-- <h3>{{ $item->nama_dimensi ?? '' }}</h3> --}}
            @if ($loop->iteration == 2)
                <h3>{{ $item->nama_dimensi }}</h3>
            @endif
        @endforeach
    </div>


    <hr>

    <div>
        @foreach ($dimensi as $item)
            @foreach ($item->indikator as $indikator)
                <h5>{{ $indikator->nama_indikator ?? '' }}</h5>
                @foreach ($indikator->sub_indikator as $subIndikator)
                    <div class="ps-5">
                        <p> {{ $subIndikator->nama_subIndikator ?? '' }}</p>
                    </div>
                @endforeach
            @endforeach
        @endforeach
    </div>



    <div class="row justify-content-center">
        <div class="">
            <canvas id="myChart" width="1250" height="300"></canvas>
        </div>
    </div>
    <br>


    <div class="ps-5">
        <tr>
            <td class="hstack">
                @foreach ($variabelLink as $index => $item)
                    @if ($index === 1)
                        <a href="{{ route('edit2', ['id' => $item['id']]) }}" class="btn btn-primary">
                            Edit Data
                        </a>
                    @endif
                @endforeach
        </tr>
    </div>

    <br>
    <br>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        const ctx = document.getElementById('myChart');


        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: {!! json_encode($variabel) !!},
                datasets: [{
                    label: '',
                    data: {!! json_encode($nilai) !!},
                    backgroundColor: [
                        'rgba(31, 58, 147, 1)',
                        'rgba(37, 116, 169, 1)',
                        'rgba(92, 151, 191, 1)',
                        'rgb(200, 247, 197)',
                        'rgb(77, 175, 124)',
                        'rgb(30, 130, 76)'
                    ],
                    borderColor: [
                        'rgba(31, 58, 147, 1)',
                        'rgba(37, 116, 169, 1)',
                        'rgba(92, 151, 191, 1)',
                        'rgb(200, 247, 197)',
                        'rgb(77, 175, 124)',
                        'rgb(30, 130, 76)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    x: {
                        ticks: {
                            minRotation: 45,
                            callback: function(value) {
                                const valueLegend = this.getLabelForValue(value);
                                const valueLegendTruc = valueLegend.substr(0, 20);
                                return valueLegendTruc + '...';
                            }
                        }
                    },
                    y: {
                        max: 100,
                        min: 0,
                        ticks: {
                            stepSize: 50
                        }
                    }

                },
                maintainAspectRatio: false,
                plugins: {
                    title: {
                        display: false,
                        text: 'Custom Chart Title'
                    },
                    legend: {
                        display: false,
                    }

                },
                responsive: false
            }
        });
    </script>
@endsection
