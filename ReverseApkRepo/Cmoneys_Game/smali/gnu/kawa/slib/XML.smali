.class public Lgnu/kawa/slib/XML;
.super Lgnu/expr/ModuleBody;
.source "XML.scm"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final $instance:Lgnu/kawa/slib/XML;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Ljava/lang/Class;

.field static final Lit2:Ljava/lang/Class;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field public static final as$Mnxml:Lgnu/mapping/Location;

.field public static final comment:Ljava/lang/Object;

.field public static final parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

.field public static final processing$Mninstruction:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .prologue
    const-string v0, "parse-xml-from-url"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XML;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-class v0, Lgnu/kawa/xml/KProcessingInstruction;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit2:Ljava/lang/Class;

    const-class v0, Lgnu/kawa/xml/KComment;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit1:Ljava/lang/Class;

    const-string v0, "as-xml"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/XML;

    invoke-direct {v0}, Lgnu/kawa/slib/XML;-><init>()V

    sput-object v0, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    .line 1
    sget-object v0, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XML;->as$Mnxml:Lgnu/mapping/Location;

    .line 3
    sget-object v0, Lgnu/kawa/slib/XML;->Lit1:Ljava/lang/Class;

    sput-object v0, Lgnu/kawa/slib/XML;->comment:Ljava/lang/Object;

    .line 5
    sget-object v0, Lgnu/kawa/slib/XML;->Lit2:Ljava/lang/Class;

    sput-object v0, Lgnu/kawa/slib/XML;->processing$Mninstruction:Ljava/lang/Object;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/XML;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XML;->parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static parseXmlFromUrl(Ljava/lang/Object;)Lgnu/lists/TreeList;
    .locals 0
    .parameter "url"

    .prologue
    .line 8
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/lists/TreeList;

    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {p2}, Lgnu/kawa/slib/XML;->parseXmlFromUrl(Ljava/lang/Object;)Lgnu/lists/TreeList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    .line 8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "$ctx"

    .prologue
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 1
    .local v0, $result:Lgnu/lists/Consumer;
    sget-object v1, Lgnu/kawa/slib/XML;->as$Mnxml:Lgnu/mapping/Location;

    new-instance v2, Lgnu/kawa/xml/OutputAsXML;

    invoke-direct {v2}, Lgnu/kawa/xml/OutputAsXML;-><init>()V

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 3
    return-void
.end method
