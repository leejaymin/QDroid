.class Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;
.super Ljava/lang/Object;
.source "TableLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/TableLayout;->addChildLater(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

.field final synthetic val$child:Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/TableLayout;Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;->val$child:Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;->val$child:Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;

    #calls: Lcom/google/devtools/simple/runtime/components/android/TableLayout;->addChild(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->access$000(Lcom/google/devtools/simple/runtime/components/android/TableLayout;Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 123
    return-void
.end method
