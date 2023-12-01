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
        Schema::create('variabels', function (Blueprint $table) {
            $table->id();
            $table->string('nama_variabel');
            $table->integer('nilai');
            $table->unsignedBigInteger('dimensi_id');
            $table->foreign('dimensi_id')->references('id')->on('dimensis')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('variabels');
    }
};
