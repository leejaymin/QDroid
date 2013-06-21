.class Lkr/co/medinbiz/widget/ultra/UltraMenu$8;
.super Ljava/lang/Object;
.source "UltraMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMenu;->notSdcardMount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$8;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    return-void
.end method
