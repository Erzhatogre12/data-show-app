<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sub_indikators', function (Blueprint $table) {
            $table->id();
            $table->string('nama_subIndikator');
            $table->unsignedBigInteger('indikator_id');
            $table->foreign('indikator_id')->references('id')->on('indikators')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_indikators');
    }
};
