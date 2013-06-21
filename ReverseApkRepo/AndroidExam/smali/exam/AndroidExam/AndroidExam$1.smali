.class Lexam/AndroidExam/AndroidExam$1;
.super Ljava/lang/Object;
.source "AndroidExam.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/AndroidExam/AndroidExam;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lexam/AndroidExam/AndroidExam;


# direct methods
.method constructor <init>(Lexam/AndroidExam/AndroidExam;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 319
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    iget-boolean v3, v3, Lexam/AndroidExam/AndroidExam;->mInitSelection:Z

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    iput-boolean v5, v3, Lexam/AndroidExam/AndroidExam;->mInitSelection:Z

    .line 321
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    const-string v4, "AndroidExam"

    invoke-virtual {v3, v4, v5}, Lexam/AndroidExam/AndroidExam;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 322
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "LastPackage"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 323
    .local v1, lastpackage:I
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    iget-object v3, v3, Lexam/AndroidExam/AndroidExam;->mSpin:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 324
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    invoke-virtual {v3, v1}, Lexam/AndroidExam/AndroidExam;->ChangePackage(I)V

    .line 332
    .end local v1           #lastpackage:I
    :goto_0
    return-void

    .line 326
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    invoke-virtual {v3, p3}, Lexam/AndroidExam/AndroidExam;->ChangePackage(I)V

    .line 327
    iget-object v3, p0, Lexam/AndroidExam/AndroidExam$1;->this$0:Lexam/AndroidExam/AndroidExam;

    const-string v4, "AndroidExam"

    invoke-virtual {v3, v4, v5}, Lexam/AndroidExam/AndroidExam;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 328
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 329
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "LastPackage"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
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
    .line 334
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
