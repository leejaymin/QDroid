.class final Lcom/rubycell/adcenter/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/g;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/g;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/UpdateActivity;->a()V

    iget-object v0, p0, Lcom/rubycell/adcenter/g;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/UpdateActivity;->finish()V

    return-void
.end method