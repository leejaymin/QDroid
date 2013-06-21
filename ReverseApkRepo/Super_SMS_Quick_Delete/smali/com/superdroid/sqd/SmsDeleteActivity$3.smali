.class Lcom/superdroid/sqd/SmsDeleteActivity$3;
.super Ljava/lang/Object;
.source "SmsDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/SmsDeleteActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/SmsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/SmsDeleteActivity$3;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$3;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->deleteSMSs()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$8(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    .line 195
    return-void
.end method
