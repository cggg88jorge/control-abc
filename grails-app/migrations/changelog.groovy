databaseChangeLog = {

	changeSet(author: "cggg88jorge (generated)", id: "1434426248320-1") {
		createTable(tableName: "record") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "recordPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "applicant", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "change", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "date_of_finished", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "description", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "executor", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "site_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434426248320-2") {
		createTable(tableName: "site") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "sitePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "cr", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434426248320-4") {
		createIndex(indexName: "FK_fq98ett8cbgv7246xck23jsvo", tableName: "record") {
			column(name: "site_id")
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434426248320-5") {
		createIndex(indexName: "cr_uniq_1434426248251", tableName: "site", unique: "true") {
			column(name: "cr")
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434426248320-3") {
		addForeignKeyConstraint(baseColumnNames: "site_id", baseTableName: "record", constraintName: "FK_fq98ett8cbgv7246xck23jsvo", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "site", referencesUniqueColumn: "false")
	}
}
