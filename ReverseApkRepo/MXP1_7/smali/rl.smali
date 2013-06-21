.class public Lrl;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Lir;


# instance fields
.field public 癤욱븳援:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/high16 v0, -0x100

    iput v0, p0, Lrl;->癤욱븳援:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lrl;->癤욱븳援:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x19

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    return-void
.end method
