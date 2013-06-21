.class public final Lba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/AntiSpamStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/kms/antispam/AntiSpamItem;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lba;->a()Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    return-object v0
.end method
