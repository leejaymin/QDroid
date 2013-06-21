.class Lkr/co/medinbiz/widget/sos/SosMenu$4$2;
.super Ljava/lang/Object;
.source "SosMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/sos/SosMenu$4;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/sos/SosMenu$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$2;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dia"
    .parameter "which"

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$2;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu$4;)Lkr/co/medinbiz/widget/sos/SosMenu;

    move-result-object v0

    iget-object v0, v0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 184
    return-void
.end method
