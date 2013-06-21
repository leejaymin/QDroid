.class public Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;
.super Ljava/lang/Object;
.source "TMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TSubMenuItem"
.end annotation


# instance fields
.field public MenuIcon:I

.field public MenuText:Ljava/lang/String;

.field public MenuType:I

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
