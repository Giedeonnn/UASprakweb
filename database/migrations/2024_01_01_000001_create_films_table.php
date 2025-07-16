<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up() {
        Schema::create('films', function (Blueprint $table) {
            $table->id();
            $table->string('judul', 100);
            $table->string('genre', 50);
            $table->integer('tahun');
            $table->text('sinopsis')->nullable();
            $table->timestamps();
        });
    }
    public function down() {
        Schema::dropIfExists('films');
    }
}; 