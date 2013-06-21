.class public Lcom/chillingo/crystal/PersistableCookieStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "cookie_store.ccs"

.field private static _contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static _instance:Lcom/chillingo/crystal/PersistableCookieStore;


# instance fields
.field private _cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_instance:Lcom/chillingo/crystal/PersistableCookieStore;

    sput-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_contextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    return-void
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "PersistableCookieStore"

    const-string v1, "+PersistableCookieStore::initialise"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_contextRef:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_instance:Lcom/chillingo/crystal/PersistableCookieStore;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PersistableCookieStore;->load()Lcom/chillingo/crystal/PersistableCookieStore;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_instance:Lcom/chillingo/crystal/PersistableCookieStore;

    :cond_1
    sget-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_instance:Lcom/chillingo/crystal/PersistableCookieStore;

    sget-object v1, Lcom/chillingo/crystal/PersistableCookieStore;->_instance:Lcom/chillingo/crystal/PersistableCookieStore;

    iget-object v1, v1, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookies(Ljava/util/List;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "PersistableCookieStore"

    const-string v1, "-PersistableCookieStore::initialise"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static instance()Lcom/chillingo/crystal/PersistableCookieStore;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_instance:Lcom/chillingo/crystal/PersistableCookieStore;

    return-object v0
.end method

.method private static load()Lcom/chillingo/crystal/PersistableCookieStore;
    .locals 16

    const/4 v7, 0x0

    const/4 v15, 0x1

    sget-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v15, :cond_0

    const-string v1, "PersistableCookieStore"

    const-string v2, "+PersistableCookieStore::load"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_7

    :try_start_0
    const-string v1, "cookie_store.ccs"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v10

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v15, :cond_1

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::load - Loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cookies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_2

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v12

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v13

    new-instance v14, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v14, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    invoke-virtual {v14, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    invoke-virtual {v14, v13}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    invoke-static {v14}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookie(Lorg/apache/http/cookie/Cookie;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/chillingo/crystal/PersistableCookieStore;

    invoke-direct {v0}, Lcom/chillingo/crystal/PersistableCookieStore;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iput-object v11, v0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookies(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    invoke-static {v8}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    invoke-static {v6}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lcom/chillingo/crystal/PersistableCookieStore;

    invoke-direct {v0}, Lcom/chillingo/crystal/PersistableCookieStore;-><init>()V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v15, :cond_4

    const-string v1, "PersistableCookieStore"

    const-string v2, "-PersistableCookieStore::load"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v0, v7

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v3

    if-ne v3, v15, :cond_5

    const-string v3, "PersistableCookieStore"

    const-string v4, "PersistableCookieStore::load - Unable to find cookie store file, assuming there hasn\'t been one created yet."

    invoke-static {v3, v4, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_5
    invoke-static {v7}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object v8, v7

    move-object v0, v7

    :goto_3
    :try_start_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v15, :cond_6

    const-string v2, "PersistableCookieStore"

    const-string v3, "PersistableCookieStore::load - Error creating class tree graph, this is pretty serious and should not be seen in release builds. Do not pass go, do not collect \u00a3200"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    invoke-static {v8}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    invoke-static {v6}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v7

    move-object v8, v7

    :goto_4
    invoke-static {v8}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    invoke-static {v6}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    throw v0

    :cond_7
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v15, :cond_8

    const-string v0, "PersistableCookieStore"

    const-string v1, "PersistableCookieStore::save - The context passed in to load is null, you should pass in the app context so it is not null"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v2

    move-object v8, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object v0, v7

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v0, v7

    move-object v7, v8

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v7

    move-object v7, v8

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v2, v6

    move-object v7, v8

    goto :goto_2
.end method

.method public static printCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "PersistableCookieStore"

    const-string v1, "PersistableCookieStore::printCookie - Begin Write Cookie"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Cookie toString() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing comment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing domain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_6

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing expiry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_7

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_8

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing isSecure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_9

    const-string v0, "PersistableCookieStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistableCookieStore::printCookie - Writing version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_a

    const-string v0, "PersistableCookieStore"

    const-string v1, "PersistableCookieStore::printCookie - End Write Cookie"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "PersistableCookieStore"

    const-string v1, "+PersistableCookieStore::addCookie()"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    iget-object v1, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-static {p1}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookie(Lorg/apache/http/cookie/Cookie;)V

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "PersistableCookieStore"

    const-string v1, "+PersistableCookieStore::addCookie()"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "PersistableCookieStore"

    const-string v1, "+PersistableCookieStore::clear"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3

    const-string v1, "cookie_store.ccs"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "PersistableCookieStore"

    const-string v1, "-PersistableCookieStore::clear"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "PersistableCookieStore"

    const-string v1, "PersistableCookieStore::clear - The context passed in to initialise is null, you should pass in the app context so it is not null"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "PersistableCookieStore"

    const-string v2, "+PersistableCookieStore::clearExpired"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "PersistableCookieStore"

    const-string v2, "PersistableCookieStore::clearExpired clearing cookie"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-static {v0}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookie(Lorg/apache/http/cookie/Cookie;)V

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "PersistableCookieStore"

    const-string v1, "+PersistableCookieStore::clearExpired"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    return-object v0
.end method

.method public printCookies(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "Cookie Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersistableCookieStore::printCookies - Cookie type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_1

    const-string v2, "Cookie Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersistableCookieStore::printCookies - Cookie Details = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_3

    const-string v0, "Cookie Store"

    const-string v1, "No cookies in the cookie store"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public save()V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/chillingo/crystal/PersistableCookieStore;->_contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_a

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v8, :cond_0

    const-string v1, "PersistableCookieStore"

    const-string v2, "PersistableCookieStore::save - Cookies in context:"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookies(Ljava/util/List;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v8, :cond_1

    const-string v1, "PersistableCookieStore"

    const-string v2, "PersistableCookieStore::save - Saving Cookies, om nom nom"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v4, v6

    move v2, v6

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    instance-of v7, v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v7, :cond_b

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->isPersistent()Z

    move-result v1

    if-ne v1, v8, :cond_b

    add-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v1, "cookie_store.ccs"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v8, :cond_3

    const-string v1, "PersistableCookieStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistableCookieStore::save - Saving "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cookies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v2, v6

    :goto_2
    iget-object v1, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    iget-object v1, p0, Lcom/chillingo/crystal/PersistableCookieStore;->_cookies:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    instance-of v3, v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v3, :cond_5

    check-cast v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->isPersistent()Z

    move-result v3

    if-ne v3, v8, :cond_4

    invoke-static {v1}, Lcom/chillingo/crystal/PersistableCookieStore;->printCookie(Lorg/apache/http/cookie/Cookie;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->isSecure()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getVersion()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v8, :cond_4

    const-string v1, "PersistableCookieStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersistableCookieStore::save - Not saving cookie "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "it is not an instance of BasicClientCookie"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v3, v5

    :goto_4
    :try_start_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v8, :cond_6

    const-string v2, "PersistableCookieStore"

    const-string v4, "PersistableCookieStore::save - Error persisting cookies (file not found exception). Nothing we can do so ignoring error :("

    invoke-static {v2, v4, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_6
    invoke-static {v1}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    :cond_7
    :goto_5
    return-void

    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-static {v4}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    invoke-static {v5}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_6
    :try_start_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v8, :cond_9

    const-string v1, "PersistableCookieStore"

    const-string v2, "PersistableCookieStore::save - Error persisting cookies. Nothing we can do so ignoring error :("

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    invoke-static {v4}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    invoke-static {v5}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_7
    invoke-static {v4}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    invoke-static {v5}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    throw v0

    :cond_a
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v8, :cond_7

    const-string v0, "PersistableCookieStore"

    const-string v1, "PersistableCookieStore::save - The context passed in to initialise is null, you should pass in the app context so it is not null"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v4, v1

    move-object v5, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v4, v3

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v3

    move-object v3, v5

    goto :goto_4

    :cond_b
    move v1, v2

    goto/16 :goto_1
.end method
