databaseChangeLog = {

	changeSet(author: "cggg88jorge (generated)", id: "1434926605591-1") {
		createTable(tableName: "incidence") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "incidencePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "description", type: "varchar(1000)") {
				constraints(nullable: "false")
			}

			column(name: "executor", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "finished_date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "requested", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "site_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "type_change", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434926605591-2") {
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

	changeSet(author: "cggg88jorge (generated)", id: "1434926605591-4") {
		createIndex(indexName: "FK_hoq6nieeyp7t12q7a5vvtdjv0", tableName: "incidence") {
			column(name: "site_id")
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434926605591-5") {
		createIndex(indexName: "cr_uniq_1434926605559", tableName: "site", unique: "true") {
			column(name: "cr")
		}
	}

	changeSet(author: "cggg88jorge (generated)", id: "1434926605591-3") {
		addForeignKeyConstraint(baseColumnNames: "site_id", baseTableName: "incidence", constraintName: "FK_hoq6nieeyp7t12q7a5vvtdjv0", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "site", referencesUniqueColumn: "false")
	}
}
