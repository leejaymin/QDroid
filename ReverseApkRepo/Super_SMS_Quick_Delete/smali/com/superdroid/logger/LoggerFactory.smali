.class public Lcom/superdroid/logger/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field public static logger:Lcom/superdroid/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/superdroid/logger/SystemOutLogger;

    invoke-direct {v0}, Lcom/superdroid/logger/SystemOutLogger;-><init>()V

    sput-object v0, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogger(Lcom/superdroid/logger/Logger;)V
    .locals 0
    .parameter "newLogger"

    .prologue
    .line 7
    sput-object p0, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    .line 8
    return-void
.end method
