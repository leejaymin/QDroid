.class public Lcom/jaynux/app/SelectHero$Hero;
.super Ljava/lang/Object;
.source "SelectHero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/SelectHero;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hero"
.end annotation


# instance fields
.field ag:I

.field booster:I

.field damage:I

.field name:Ljava/lang/String;

.field speed:I

.field final synthetic this$0:Lcom/jaynux/app/SelectHero;


# direct methods
.method constructor <init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter "arName"
    .parameter "arAg"
    .parameter "arSpeed"
    .parameter "arBooster"
    .parameter "arDamage"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/jaynux/app/SelectHero$Hero;->this$0:Lcom/jaynux/app/SelectHero;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/jaynux/app/SelectHero$Hero;->name:Ljava/lang/String;

    .line 153
    iput p3, p0, Lcom/jaynux/app/SelectHero$Hero;->ag:I

    .line 154
    iput p4, p0, Lcom/jaynux/app/SelectHero$Hero;->speed:I

    .line 155
    iput p5, p0, Lcom/jaynux/app/SelectHero$Hero;->booster:I

    .line 156
    iput p6, p0, Lcom/jaynux/app/SelectHero$Hero;->damage:I

    return-void
.end method
