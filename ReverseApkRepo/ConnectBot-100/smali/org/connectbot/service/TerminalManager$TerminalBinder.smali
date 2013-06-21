.class public Lorg/connectbot/service/TerminalManager$TerminalBinder;
.super Landroid/os/Binder;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/TerminalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TerminalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalManager;


# direct methods
.method public constructor <init>(Lorg/connectbot/service/TerminalManager;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lorg/connectbot/service/TerminalManager$TerminalBinder;->this$0:Lorg/connectbot/service/TerminalManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/connectbot/service/TerminalManager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager$TerminalBinder;->this$0:Lorg/connectbot/service/TerminalManager;

    return-object v0
.end method
