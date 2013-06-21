.class Lcom/dakkhin/android/bhadram/EntryList$2;
.super Ljava/lang/Object;
.source "EntryList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/EntryList;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/EntryList;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/EntryList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EntryList$2;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$2;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    const-string v2, "akandaka"

    invoke-virtual {v1, v2}, Lcom/dakkhin/android/bhadram/EntryList;->deleteDatabase(Ljava/lang/String;)Z

    .line 200
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$2;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    const-string v2, "dakkhin_bhadram_master"

    invoke-virtual {v1, v2}, Lcom/dakkhin/android/bhadram/EntryList;->deleteFile(Ljava/lang/String;)Z

    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$2;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    const-class v2, Lcom/dakkhin/android/bhadram/Auth;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, authIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$2;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    invoke-virtual {v1, v0}, Lcom/dakkhin/android/bhadram/EntryList;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method
