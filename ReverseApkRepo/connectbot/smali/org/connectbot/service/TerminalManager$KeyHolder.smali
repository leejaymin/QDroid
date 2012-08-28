.class public Lorg/connectbot/service/TerminalManager$KeyHolder;
.super Ljava/lang/Object;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/TerminalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyHolder"
.end annotation


# instance fields
.field public bean:Lorg/connectbot/bean/PubkeyBean;

.field public openSSHPubkey:[B

.field public trileadKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
