.class Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;
.super Ljava/lang/Object;
.source "DataSourceConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/widget/DataSourceConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/widget/DataSourceConfigure;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 110
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->id:I

    .line 112
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .prologue
    .line 120
    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v2}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$2(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v2

    iget-object v3, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I
    invoke-static {v3}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$3(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)I

    move-result v3

    iget v4, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->id:I

    invoke-virtual {v2, v3, v4}, Ledu/umich/PowerTutor/widget/DataSource;->setParam(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, resultValue:Landroid/content/Intent;
    const-string v2, "data_source"

    iget-object v3, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v3}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$2(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->setResult(ILandroid/content/Intent;)V

    .line 124
    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->finish()V

    .line 132
    .end local v0           #resultValue:Landroid/content/Intent;
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    .line 127
    const-class v3, Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    .line 126
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, startIntent:Landroid/content/Intent;
    const-string v2, "data_source"

    iget-object v3, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v3}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$2(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    const-string v2, "level"

    iget-object v3, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I
    invoke-static {v3}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$3(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public setupView(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 115
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->shortOptions:[Ljava/lang/String;
    invoke-static {v0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$0(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->id:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    #getter for: Ledu/umich/PowerTutor/widget/DataSourceConfigure;->longOptions:[Ljava/lang/String;
    invoke-static {v0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->access$1(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->id:I

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
