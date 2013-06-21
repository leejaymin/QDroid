.class Lbackport/android/bluetooth/RequestDiscoverableActivity$2;
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


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestDiscoverableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$2;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$2;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    invoke-virtual {v0}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->finish()V

    .line 79
    return-void
.end method
