.class public Lcom/chillingo/crystal/utils/DLog;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x0

.field public static final INFO:I = 0x2

.field public static final LOG_ALL:Ljava/lang/String; = "*"

.field public static final NONE:I = -0x1

.field public static final VERBOSE:I = 0x4

.field public static final WARNING:I = 0x1

.field private static _allowedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/utils/DLog;->_allowedTags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowTag(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/utils/DLog;->_allowedTags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/utils/DLog;->_allowedTags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/DLog;->tagAllowed(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/DLog;->tagAllowed(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/DLog;->tagAllowed(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static isDebugLoggingEnabled()Z
    .locals 2

    sget v0, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isErrorLoggingEnabled()Z
    .locals 1

    sget v0, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInfoLoggingEnabled()Z
    .locals 2

    sget v0, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoLoggingEnabled()Z
    .locals 2

    sget v0, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 2

    sget v0, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWarningLoggingEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/chillingo/crystal/utils/DLog;->_logLevel:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeTag(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/utils/DLog;->_allowedTags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static tagAllowed(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/utils/DLog;->_allowedTags:Ljava/util/List;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/utils/DLog;->_allowedTags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chillingo/crystal/utils/DLog;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isVerboseLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/DLog;->tagAllowed(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chillingo/crystal/utils/DLog;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isWarningLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/DLog;->tagAllowed(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isWarningLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
