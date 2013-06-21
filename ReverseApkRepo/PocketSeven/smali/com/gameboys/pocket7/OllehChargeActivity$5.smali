.class Lcom/gameboys/pocket7/OllehChargeActivity$5;
.super Ljava/lang/Object;
.source "OllehChargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/OllehChargeActivity;->ChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/OllehChargeActivity;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/OllehChargeActivity$5;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity$5;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OllehChargeActivity;->finish()V

    .line 129
    return-void
.end method
