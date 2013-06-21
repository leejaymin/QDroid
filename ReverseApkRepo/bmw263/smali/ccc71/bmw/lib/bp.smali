.class final Lccc71/bmw/lib/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_past_stats;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_past_stats;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bp;->a:Lccc71/bmw/lib/bmw_past_stats;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    packed-switch p3, :pswitch_data_0

    .line 67
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/bp;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_past_stats;->a(Lccc71/bmw/lib/bmw_past_stats;)V

    .line 68
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lccc71/bmw/lib/bp;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->a(Lccc71/bmw/lib/bmw_past_stats;I)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lccc71/bmw/lib/bp;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->a(Lccc71/bmw/lib/bmw_past_stats;I)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method
