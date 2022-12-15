package com.nhom36.milkPowder.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import static com.nhom36.milkPowder.db.DBProperties.*;

public class JDBIConnector {
    private static Jdbi jdbi;

    private JDBIConnector() {
    }

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + getHost() + ":" + getPort() + "/" + getDatabaseName());
        dataSource.setUser(getUserName());
        dataSource.setPassword(getPassword());

        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        jdbi = Jdbi.create(dataSource);
        jdbi.installPlugin(new org.jdbi.v3.sqlobject.SqlObjectPlugin());
    }

    public static Jdbi get() {
        if (jdbi == null)
            makeConnect();
        return jdbi;
    }

}
