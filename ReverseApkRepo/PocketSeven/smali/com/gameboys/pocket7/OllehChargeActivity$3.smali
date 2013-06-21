.class Lcom/gameboys/pocket7/OllehChargeActivity$3;
.super Ljava/lang/Object;
.source "OllehChargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/gameboys/pocket7/OllehChargeActivity$3;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity$3;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    const-string v1, "8100F346"

    iget-object v2, p0, Lcom/gameboys/pocket7/OllehChargeActivity$3;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    iget-object v2, v2, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gameboys/pocket7/OllehChargeActivity;->purchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
