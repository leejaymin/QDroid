.class final Lcom/rubycell/adcenter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/ShowInfomationActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/ShowInfomationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/f;->a:Lcom/rubycell/adcenter/ShowInfomationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/f;->a:Lcom/rubycell/adcenter/ShowInfomationActivity;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->finish()V

    return-void
.end method
