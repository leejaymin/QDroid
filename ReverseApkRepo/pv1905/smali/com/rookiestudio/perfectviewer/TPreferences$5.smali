.class Lcom/rookiestudio/perfectviewer/TPreferences$5;
.super Ljava/lang/Object;
.source "TPreferences.java"

# interfaces
.implements Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TPreferences;->PickInfoColor()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferences;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferences$5;->this$0:Lcom/rookiestudio/perfectviewer/TPreferences;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 596
    return-void
.end method

.method public onOk(Lcom/rookiestudio/customize/AmbilWarnaDialog;I)V
    .locals 2
    .parameter "dialog"
    .parameter "color"

    .prologue
    .line 599
    sput p2, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoColor:I

    .line 600
    const-string v0, "ShowInfoColor"

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoColor:I

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 601
    return-void
.end method
