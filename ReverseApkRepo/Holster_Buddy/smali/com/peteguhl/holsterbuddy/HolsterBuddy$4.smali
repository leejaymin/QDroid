.class Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;
.super Ljava/lang/Object;
.source "HolsterBuddy.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peteguhl/holsterbuddy/HolsterBuddy;->setButtonActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;


# direct methods
.method constructor <init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    if-eqz p2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v0, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v0, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 318
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v0, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 319
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iput-boolean v2, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magneticHolsterEnabled:Z

    .line 321
    :cond_0
    return-void
.end method
