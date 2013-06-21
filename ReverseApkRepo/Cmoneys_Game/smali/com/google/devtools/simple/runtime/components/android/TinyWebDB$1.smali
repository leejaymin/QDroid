.class Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$valueToStore:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;->val$valueToStore:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;->val$valueToStore:Ljava/lang/Object;

    #calls: Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->access$000(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
