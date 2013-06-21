.class Lcom/dakkhin/android/bhadram/EntryList$4;
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
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EntryList$4;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList$4;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    #calls: Lcom/dakkhin/android/bhadram/EntryList;->deleteAll()V
    invoke-static {v0}, Lcom/dakkhin/android/bhadram/EntryList;->access$2(Lcom/dakkhin/android/bhadram/EntryList;)V

    .line 222
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList$4;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    #calls: Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V
    invoke-static {v0}, Lcom/dakkhin/android/bhadram/EntryList;->access$1(Lcom/dakkhin/android/bhadram/EntryList;)V

    .line 223
    return-void
.end method
