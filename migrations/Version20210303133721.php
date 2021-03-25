<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210303133721 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE bouking (id INT AUTO_INCREMENT NOT NULL, bouker_id INT NOT NULL, ad_id INT NOT NULL, creat_at DATETIME NOT NULL, start_date DATETIME NOT NULL, end_date DATETIME NOT NULL, amout DOUBLE PRECISION NOT NULL, INDEX IDX_CA5C62FD48D08386 (bouker_id), INDEX IDX_CA5C62FD4F34D596 (ad_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE bouking ADD CONSTRAINT FK_CA5C62FD48D08386 FOREIGN KEY (bouker_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE bouking ADD CONSTRAINT FK_CA5C62FD4F34D596 FOREIGN KEY (ad_id) REFERENCES ad (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE bouking');
    }
}
