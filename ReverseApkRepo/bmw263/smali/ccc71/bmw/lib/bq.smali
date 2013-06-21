.class final Lccc71/bmw/lib/bq;
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
    iput-object p1, p0, Lccc71/bmw/lib/bq;->a:Lccc71/bmw/lib/bmw_past_stats;

    .line 77
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
    .line 82
    packed-switch p3, :pswitch_data_0

    .line 98
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/bq;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_past_stats;->a(Lccc71/bmw/lib/bmw_past_stats;)V

    .line 99
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lccc71/bmw/lib/bq;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lccc71/bmw/lib/bq;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;I)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lccc71/bmw/lib/bq;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;I)V

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lccc71/bmw/lib/bq;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;I)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method
