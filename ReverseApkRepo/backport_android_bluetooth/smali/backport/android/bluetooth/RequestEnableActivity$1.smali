.class Lbackport/android/bluetooth/RequestEnableActivity$1;
.super Ljava/lang/Object;
.source "RequestEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestEnableActivity;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbackport/android/bluetooth/RequestEnableActivity;


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestEnableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestEnableActivity$1;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity$1;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;

    #calls: Lbackport/android/bluetooth/RequestEnableActivity;->onButtonClicked()V
    invoke-static {v0}, Lbackport/android/bluetooth/RequestEnableActivity;->access$0(Lbackport/android/bluetooth/RequestEnableActivity;)V

    .line 63
    return-void
.end method
