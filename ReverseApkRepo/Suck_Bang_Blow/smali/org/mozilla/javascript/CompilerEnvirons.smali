.class public Lorg/mozilla/javascript/CompilerEnvirons;
.super Ljava/lang/Object;
.source "CompilerEnvirons.java"


# instance fields
.field activationNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowMemberExprAsFunctionName:Z

.field private allowSharpComments:Z

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private generateDebugInfo:Z

.field private generateObserverCount:Z

.field private generatingSource:Z

.field private ideMode:Z

.field private languageVersion:I

.field private optimizationLevel:I

.field private recordingComments:Z

.field private recordingLocalJsDocComments:Z

.field private recoverFromErrors:Z

.field private reservedKeywordAsIdentifier:Z

.field private strictMode:Z

.field private useDynamicScope:Z

.field private warnTrailingComma:Z

.field private warningAsError:Z

.field private xmlAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    iput-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 52
    iput v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 53
    iput-boolean v2, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 54
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->useDynamicScope:Z

    .line 55
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 56
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 57
    iput-boolean v2, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 58
    iput v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->optimizationLevel:I

    .line 59
    iput-boolean v2, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 60
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 61
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    .line 62
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 63
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    .line 64
    return-void
.end method

.method public static ideEnvirons()Lorg/mozilla/javascript/CompilerEnvirons;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 305
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    .line 306
    .local v0, env:Lorg/mozilla/javascript/CompilerEnvirons;
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setRecoverFromErrors(Z)V

    .line 307
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setRecordingComments(Z)V

    .line 308
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setStrictMode(Z)V

    .line 309
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setWarnTrailingComma(Z)V

    .line 310
    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setLanguageVersion(I)V

    .line 311
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setReservedKeywordAsIdentifier(Z)V

    .line 312
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setIdeMode(Z)V

    .line 313
    new-instance v1, Lorg/mozilla/javascript/ast/ErrorCollector;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/ErrorCollector;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    .line 314
    return-object v0
.end method


# virtual methods
.method public getActivationNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    return-object v0
.end method

.method public getAllowSharpComments()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    return v0
.end method

.method public final getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    return-object v0
.end method

.method public final getLanguageVersion()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    return v0
.end method

.method public final getOptimizationLevel()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->optimizationLevel:I

    return v0
.end method

.method public getWarnTrailingComma()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warnTrailingComma:Z

    return v0
.end method

.method public initFromContext(Lorg/mozilla/javascript/Context;)V
    .locals 1
    .parameter "cx"

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    .line 69
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 70
    iget-boolean v0, p1, Lorg/mozilla/javascript/Context;->compileFunctionsWithDynamicScopeFlag:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->useDynamicScope:Z

    .line 71
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingDebugChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 73
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 77
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 79
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    .line 80
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 83
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->optimizationLevel:I

    .line 85
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingSource()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 86
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    iput-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    .line 89
    iget-boolean v0, p1, Lorg/mozilla/javascript/Context;->generateObserverCount:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 90
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAllowMemberExprAsFunctionName()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    return v0
.end method

.method public final isGenerateDebugInfo()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    return v0
.end method

.method public isGenerateObserverCount()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    return v0
.end method

.method public final isGeneratingSource()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    return v0
.end method

.method public isIdeMode()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->ideMode:Z

    return v0
.end method

.method public isRecordingComments()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingComments:Z

    return v0
.end method

.method public isRecordingLocalJsDocComments()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingLocalJsDocComments:Z

    return v0
.end method

.method public final isReservedKeywordAsIdentifier()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    return v0
.end method

.method public final isStrictMode()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    return v0
.end method

.method public final isUseDynamicScope()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->useDynamicScope:Z

    return v0
.end method

.method public final isXmlAvailable()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    return v0
.end method

.method public recoverFromErrors()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors:Z

    return v0
.end method

.method public final reportWarningAsError()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    return v0
.end method

.method public setActivationNames(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, activationNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    .line 286
    return-void
.end method

.method public setAllowMemberExprAsFunctionName(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 150
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 151
    return-void
.end method

.method public setAllowSharpComments(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 292
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    .line 293
    return-void
.end method

.method public setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1
    .parameter "errorReporter"

    .prologue
    .line 99
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 101
    return-void
.end method

.method public setGenerateDebugInfo(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 122
    return-void
.end method

.method public setGenerateObserverCount(Z)V
    .locals 0
    .parameter "generateObserverCount"

    .prologue
    .line 236
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 237
    return-void
.end method

.method public setGeneratingSource(Z)V
    .locals 0
    .parameter "generatingSource"

    .prologue
    .line 213
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 214
    return-void
.end method

.method public setIdeMode(Z)V
    .locals 0
    .parameter "ide"

    .prologue
    .line 273
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->ideMode:Z

    .line 274
    return-void
.end method

.method public setLanguageVersion(I)V
    .locals 0
    .parameter "languageVersion"

    .prologue
    .line 110
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkLanguageVersion(I)V

    .line 111
    iput p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 112
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 170
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkOptimizationLevel(I)V

    .line 171
    iput p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->optimizationLevel:I

    .line 172
    return-void
.end method

.method public setRecordingComments(Z)V
    .locals 0
    .parameter "record"

    .prologue
    .line 244
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingComments:Z

    .line 245
    return-void
.end method

.method public setRecordingLocalJsDocComments(Z)V
    .locals 0
    .parameter "record"

    .prologue
    .line 252
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingLocalJsDocComments:Z

    .line 253
    return-void
.end method

.method public setRecoverFromErrors(Z)V
    .locals 0
    .parameter "recover"

    .prologue
    .line 261
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors:Z

    .line 262
    return-void
.end method

.method public setReservedKeywordAsIdentifier(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 137
    return-void
.end method

.method public setStrictMode(Z)V
    .locals 0
    .parameter "strict"

    .prologue
    .line 194
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 195
    return-void
.end method

.method public setWarnTrailingComma(Z)V
    .locals 0
    .parameter "warn"

    .prologue
    .line 184
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warnTrailingComma:Z

    .line 185
    return-void
.end method

.method public setXmlAvailable(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 160
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 161
    return-void
.end method
