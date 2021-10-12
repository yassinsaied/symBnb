<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20211011224700 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE ad ADD pool TINYINT(1) DEFAULT NULL, ADD central_heating TINYINT(1) DEFAULT NULL, ADD central_cooling TINYINT(1) DEFAULT NULL, ADD elevator TINYINT(1) DEFAULT NULL, ADD spa TINYINT(1) DEFAULT NULL, ADD stunning_vieaw TINYINT(1) DEFAULT NULL, ADD dish_washer TINYINT(1) DEFAULT NULL, ADD surveillance_camera TINYINT(1) DEFAULT NULL, ADD pet_frindly TINYINT(1) DEFAULT NULL, ADD sweet_room TINYINT(1) DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE ad DROP pool, DROP central_heating, DROP central_cooling, DROP elevator, DROP spa, DROP stunning_vieaw, DROP dish_washer, DROP surveillance_camera, DROP pet_frindly, DROP sweet_room');
    }
}
