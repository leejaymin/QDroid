.class public Lcom/wolfram/android/alpha/view/PodStateSpinner;
.super Landroid/widget/Spinner;
.source "PodStateSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field initialization:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/PodStateSpinner;->initialization:Z

    .line 37
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 26
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/view/PodStateSpinner;->initialization:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/PodStateSpinner;->initialization:Z

    .line 30
    .end local p0
    :goto_0
    return-void

    .line 29
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/PodStateSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/PodStateSpinner;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/PodStateButtonData;

    invoke-virtual {v0, p0, p3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->spinnerClickHandler(Lcom/wolfram/android/alpha/PodStateButtonData;I)V

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
    .line 33
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
