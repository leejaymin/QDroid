.class Lbackport/android/bluetooth/RequestDiscoverableActivity$1;
.super Ljava/lang/Object;
.source "RequestDiscoverableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestDiscoverableActivity;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

.field private final synthetic val$duration:I


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestDiscoverableActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$1;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    iput p2, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$1;->val$duration:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 72
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$1;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    iget v1, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$1;->val$duration:I

    #calls: Lbackport/android/bluetooth/RequestDiscoverableActivity;->onButtonClicked(I)V
    invoke-static {v0, v1}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->access$0(Lbackport/android/bluetooth/RequestDiscoverableActivity;I)V

    .line 73
    return-void
.end method
