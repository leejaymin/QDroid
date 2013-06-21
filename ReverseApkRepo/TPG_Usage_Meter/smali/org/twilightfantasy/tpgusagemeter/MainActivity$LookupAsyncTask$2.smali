.class Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;


# direct methods
.method constructor <init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$2;->this$1:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 559
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$2;->this$1:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    invoke-virtual {v0, p3}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->showUsageSummary(I)V

    .line 560
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
