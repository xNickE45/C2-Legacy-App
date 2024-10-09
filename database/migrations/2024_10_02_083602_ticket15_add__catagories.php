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
        Schema::create('catagories', function (Blueprint $table) {
            $table->id();
            $table->string('catagory')->default('Technology');
            $table->timestamp('created_at')->useCurrent();
        });

        Schema::table('brands', function (Blueprint $table) {
            $table->string('category')->default('technology');
            $table->unsignedBigInteger('catagory_id')->nullable();

            // Define the foreign key constraint
            $table->foreign('catagory_id')->references('id')->on('catagories')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('brands', function (Blueprint $table) {
            $table->dropForeign(['catagory_id']);
            $table->dropColumn('catagory_id');
            $table->dropColumn('category');
        });

        Schema::dropIfExists('catagories');
    }
};
