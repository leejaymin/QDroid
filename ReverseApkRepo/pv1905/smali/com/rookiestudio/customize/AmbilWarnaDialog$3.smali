.class Lcom/rookiestudio/customize/AmbilWarnaDialog$3;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v0, v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->listener:Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v0, v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->listener:Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;

    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v2, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->warnaBaru:I

    invoke-interface {v0, v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;->onOk(Lcom/rookiestudio/customize/AmbilWarnaDialog;I)V

    .line 123
    :cond_0
    return-void
.end method
