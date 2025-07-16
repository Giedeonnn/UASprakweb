<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up() {
        Schema::create('reviews', function (Blueprint $table) {
            $table->id();
            $table->foreignId('film_id')->constrained('films')->onDelete('cascade');
            $table->foreignId('reviewer_id')->constrained('reviewers')->onDelete('cascade');
            $table->integer('rating');
            $table->text('komentar')->nullable();
            $table->date('tanggal_review');
            $table->timestamps();
        });
    }
    public function down() {
        Schema::dropIfExists('reviews');
    }
}; 