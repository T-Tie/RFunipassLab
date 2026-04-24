; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5djapv0z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10000 x [50 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 500000, ptr noundef nonnull align 16 %a) #3
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end16, %entry
  %j.0.ph = phi i32 [ %j.1, %if.end16 ], [ 0, %entry ]
  %count.0.ph = phi i32 [ %count.1, %if.end16 ], [ 0, %entry ]
  %i.0.ph = phi i32 [ %i.1, %if.end16 ], [ 0, %entry ]
  %cmp4.not = icmp eq i32 %count.0.ph, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.then
  %call = tail call i32 @getchar()
  %sext = shl i32 %call, 24
  %conv1 = ashr exact i32 %sext, 24
  switch i32 %conv1, label %if.else12 [
    i32 10, label %for.cond.preheader
    i32 32, label %if.then
  ]

for.cond.preheader:                               ; preds = %while.cond
  %cmp19 = icmp sgt i32 %i.0.ph, 0
  br i1 %cmp19, label %for.cond.preheader32, label %for.cond38.preheader

for.cond.preheader32:                             ; preds = %for.cond.preheader
  %0 = load i8, ptr %a, align 16
  %cmp26.not = icmp eq i8 %0, 0
  br i1 %cmp26.not, label %for.cond, label %for.cond20

if.then:                                          ; preds = %while.cond
  br i1 %cmp4.not, label %if.then9, label %while.cond, !llvm.loop !5

if.then9:                                         ; preds = %if.then
  %inc = add nsw i32 %i.0.ph, 1
  br label %if.end16

if.else12:                                        ; preds = %while.cond
  %conv = trunc i32 %call to i8
  %idxprom = sext i32 %i.0.ph to i64
  %inc13 = add nsw i32 %j.0.ph, 1
  %idxprom14 = sext i32 %j.0.ph to i64
  %arrayidx15 = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom, i64 %idxprom14
  store i8 %conv, ptr %arrayidx15, align 1, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else12
  %j.1 = phi i32 [ 0, %if.then9 ], [ %inc13, %if.else12 ]
  %count.1 = phi i32 [ 1, %if.then9 ], [ 0, %if.else12 ]
  %i.1 = phi i32 [ %inc, %if.then9 ], [ %i.0.ph, %if.else12 ]
  br label %while.cond.outer, !llvm.loop !5

for.cond:                                         ; preds = %for.cond.preheader32, %for.cond
  %call34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(2) @.str)
  br label %for.cond

for.cond38.preheader:                             ; preds = %for.cond.preheader
  %idxprom39 = sext i32 %i.0.ph to i64
  %arrayidx40 = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom39
  %1 = load i8, ptr %arrayidx40, align 1, !tbaa !8, !invariant.load !11
  %cmp44.not = icmp eq i8 %1, 0
  br i1 %cmp44.not, label %for.end53, label %for.cond38

for.cond20:                                       ; preds = %for.cond.preheader32, %for.cond20
  %2 = phi i8 [ %.pre, %for.cond20 ], [ %0, %for.cond.preheader32 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond20 ], [ 0, %for.cond.preheader32 ]
  %call32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx31.phi.trans.insert = getelementptr inbounds nuw [10000 x [50 x i8]], ptr %a, i64 0, i64 0, i64 %indvars.iv.next
  %.pre = load i8, ptr %arrayidx31.phi.trans.insert, align 1, !tbaa !8, !invariant.load !11
  br label %for.cond20

for.cond38:                                       ; preds = %for.cond38.preheader, %for.cond38
  %call50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %1)
  br label %for.cond38

for.end53:                                        ; preds = %for.cond38.preheader
  call void @llvm.lifetime.end.p0(i64 noundef 500000, ptr noundef nonnull %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{}
