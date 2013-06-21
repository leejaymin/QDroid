.class Lcom/dakkhin/android/bhadram/EntryList$7$2;
.super Ljava/lang/Object;
.source "EntryList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/EntryList$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dakkhin/android/bhadram/EntryList$7;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/EntryList$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EntryList$7$2;->this$1:Lcom/dakkhin/android/bhadram/EntryList$7;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$7$2;->this$1:Lcom/dakkhin/android/bhadram/EntryList$7;

    #getter for: Lcom/dakkhin/android/bhadram/EntryList$7;->this$0:Lcom/dakkhin/android/bhadram/EntryList;
    invoke-static {v1}, Lcom/dakkhin/android/bhadram/EntryList$7;->access$0(Lcom/dakkhin/android/bhadram/EntryList$7;)Lcom/dakkhin/android/bhadram/EntryList;

    move-result-object v1

    const-class v2, Lcom/dakkhin/android/bhadram/Auth;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$7$2;->this$1:Lcom/dakkhin/android/bhadram/EntryList$7;

    #getter for: Lcom/dakkhin/android/bhadram/EntryList$7;->this$0:Lcom/dakkhin/android/bhadram/EntryList;
    invoke-static {v1}, Lcom/dakkhin/android/bhadram/EntryList$7;->access$0(Lcom/dakkhin/android/bhadram/EntryList$7;)Lcom/dakkhin/android/bhadram/EntryList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dakkhin/android/bhadram/EntryList;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method
