.class Lkr/co/medinbiz/widget/sos/SosMenu$4$1;
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dia"
    .parameter "which"

    .prologue
    .line 161
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu$4;)Lkr/co/medinbiz/widget/sos/SosMenu;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;
    invoke-static {v1}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu$4;)Lkr/co/medinbiz/widget/sos/SosMenu;

    move-result-object v1

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    .line 163
    const-string v2, ""

    .line 164
    iget-object v3, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;
    invoke-static {v3}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu$4;)Lkr/co/medinbiz/widget/sos/SosMenu;

    move-result-object v3

    iget-object v3, v3, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->message_getting_location_wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    const/4 v4, 0x0

    .line 161
    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lkr/co/medinbiz/widget/sos/SosMenu;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$7(Lkr/co/medinbiz/widget/sos/SosMenu;Landroid/app/ProgressDialog;)V

    .line 173
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;->this$1:Lkr/co/medinbiz/widget/sos/SosMenu$4;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu$4;)Lkr/co/medinbiz/widget/sos/SosMenu;

    move-result-object v0

    #calls: Lkr/co/medinbiz/widget/sos/SosMenu;->gpsInit()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$1(Lkr/co/medinbiz/widget/sos/SosMenu;)V

    .line 174
    return-void
.end method
