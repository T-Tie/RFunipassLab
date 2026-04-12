; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9r83vc4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [10000 x i8], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %b = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef align 16 %str) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %str, i8 noundef 0, i64 noundef 10000, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 400000, ptr noundef align 16 %b) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %m.0 to i64
  %arrayidx = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !9
  %inc = add nsw i32 %m.0, 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %while.end
  %j.0 = phi i32 [ 0, %while.end ], [ %j.1, %if.end ]
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %0, %m.0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom3
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !9, !invariant.load !13
  %conv5 = sext i8 %1 to i32
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %sub = sub nsw i32 %0, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom7
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !9, !invariant.load !13
  %conv9 = sext i8 %2 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 %0, ptr %arrayidx12, align 4, !tbaa !5
  %inc13 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %j.1 = phi i32 [ %inc13, %if.then ], [ %j.0, %land.lhs.true ], [ %j.0, %for.body ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %if.end34, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %3, %m.0
  br i1 %cmp16, label %for.body17, label %for.end37

for.body17:                                       ; preds = %for.cond15
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %if.end25, %for.body17
  %sum.0 = phi i32 [ 0, %for.body17 ], [ %add, %if.end25 ]
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %4, %j.0
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %idxprom21 = sext i32 %4 to i64
  %arrayidx22 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom21
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !13
  %cmp23 = icmp ne i32 %3, %5
  br i1 %cmp23, label %if.end25, label %if.else

if.else:                                          ; preds = %for.body20
  br label %if.end25

if.end25:                                         ; preds = %for.body20, %if.else
  %s.0 = phi i32 [ 1, %if.else ], [ 0, %for.body20 ]
  %add = add nsw i32 %sum.0, %s.0
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %k) #7
  br label %for.cond18

for.end28:                                        ; preds = %for.cond18
  %cmp29 = icmp eq i32 %sum.0, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.end28
  %idxprom31 = sext i32 %3 to i64
  %arrayidx32 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom31
  %6 = load i8, ptr %arrayidx32, align 1, !tbaa !9, !invariant.load !13
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.end28
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  br label %for.cond15

for.end37:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 400000, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %str) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc14 = add nsw i32 %1, 1
  store i32 %inc14, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{}
