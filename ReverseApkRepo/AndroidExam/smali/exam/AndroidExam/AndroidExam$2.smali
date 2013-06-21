.class Lexam/AndroidExam/AndroidExam$2;
.super Ljava/lang/Object;
.source "AndroidExam.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/AndroidExam/AndroidExam;->ChangePackage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lexam/AndroidExam/AndroidExam;

.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lexam/AndroidExam/AndroidExam;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/AndroidExam/AndroidExam$2;->this$0:Lexam/AndroidExam/AndroidExam;

    iput-object p2, p0, Lexam/AndroidExam/AndroidExam$2;->val$ctx:Landroid/content/Context;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lexam/AndroidExam/AndroidExam$2;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lexam/AndroidExam/AndroidExam$2;->this$0:Lexam/AndroidExam/AndroidExam;

    iget-object v2, v2, Lexam/AndroidExam/AndroidExam;->arExample:[[Lexam/AndroidExam/AndroidExam$Example;

    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$2;->this$0:Lexam/AndroidExam/AndroidExam;

    iget v3, v3, Lexam/AndroidExam/AndroidExam;->mPackage:I

    aget-object v2, v2, v3

    aget-object v2, v2, p3

    iget-object v2, v2, Lexam/AndroidExam/AndroidExam$Example;->cls:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/AndroidExam/AndroidExam$2;->this$0:Lexam/AndroidExam/AndroidExam;

    invoke-virtual {v1, v0}, Lexam/AndroidExam/AndroidExam;->startActivity(Landroid/content/Intent;)V

    .line 358
    return-void
.end method
