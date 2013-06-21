.class Ledu/umich/PowerTutor/widget/Configure$WidgetItem;
.super Ljava/lang/Object;
.source "Configure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/widget/Configure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetItem"
.end annotation


# instance fields
.field private columnId:I

.field final synthetic this$0:Ledu/umich/PowerTutor/widget/Configure;


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/widget/Configure;I)V
    .locals 0
    .parameter
    .parameter "columnId"

    .prologue
    .line 147
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p2, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->columnId:I

    .line 149
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    .line 159
    const-class v2, Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    .line 158
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, startIntent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    iget v2, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->columnId:I

    invoke-virtual {v1, v0, v2}, Ledu/umich/PowerTutor/widget/Configure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method

.method public setupView(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->columnId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v1}, Ledu/umich/PowerTutor/widget/Configure;->access$0(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v1

    iget v2, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->columnId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ledu/umich/PowerTutor/widget/DataSource;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v0}, Ledu/umich/PowerTutor/widget/Configure;->access$0(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v0

    iget v1, p0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->columnId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ledu/umich/PowerTutor/widget/DataSource;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method
