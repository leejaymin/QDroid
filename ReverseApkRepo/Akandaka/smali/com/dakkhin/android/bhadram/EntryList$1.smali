.class Lcom/dakkhin/android/bhadram/EntryList$1;
.super Ljava/lang/Object;
.source "EntryList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/EntryList;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EntryList$1;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 68
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList$1;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/dakkhin/android/bhadram/EntryList;->fillEntriesWithSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->access$0(Lcom/dakkhin/android/bhadram/EntryList;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList$1;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    #calls: Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V
    invoke-static {v0}, Lcom/dakkhin/android/bhadram/EntryList;->access$1(Lcom/dakkhin/android/bhadram/EntryList;)V

    goto :goto_0
.end method
