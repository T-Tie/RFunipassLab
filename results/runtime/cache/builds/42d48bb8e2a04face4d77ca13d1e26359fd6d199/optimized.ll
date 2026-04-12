; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcex6ij62.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %h = alloca [25 x i32], align 16
  %len = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #6
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %h) #6
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %len) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %len, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %wide.trip.count11 = zext nneg i32 %smax to i64
  br label %for.cond3

for.cond3:                                        ; preds = %if.end32, %for.end
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %if.end32 ], [ 1, %for.end ]
  %ans.0 = phi i32 [ %spec.select2, %if.end32 ], [ 1, %for.end ]
  %exitcond12.not = icmp eq i64 %indvars.iv7, %wide.trip.count11
  br i1 %exitcond12.not, label %for.end42, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond3
  %arrayidx12 = getelementptr inbounds nuw [25 x i32], ptr %h, i64 0, i64 %indvars.iv7
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc21
  %indvars.iv4 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next5, %for.inc21 ]
  %temp.0 = phi i32 [ -1, %for.cond6.preheader ], [ %temp.1, %for.inc21 ]
  %tIndex.0 = phi i32 [ -1, %for.cond6.preheader ], [ %tIndex.1, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv4, %indvars.iv7
  br i1 %exitcond.not, label %for.end23, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [25 x i32], ptr %h, i64 0, i64 %indvars.iv4
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp13.not = icmp slt i32 %3, %2
  br i1 %cmp13.not, label %for.inc21, label %if.then

if.then:                                          ; preds = %for.body8
  %arrayidx15 = getelementptr inbounds nuw [25 x i32], ptr %len, i64 0, i64 %indvars.iv4
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %4, %temp.0
  %spec.select = call i32 @llvm.smax.i32(i32 %4, i32 %temp.0)
  %5 = trunc nuw nsw i64 %indvars.iv4 to i32
  %spec.select1 = select i1 %cmp16, i32 %5, i32 %tIndex.0
  br label %for.inc21

for.inc21:                                        ; preds = %if.then, %for.body8
  %temp.1 = phi i32 [ %temp.0, %for.body8 ], [ %spec.select, %if.then ]
  %tIndex.1 = phi i32 [ %tIndex.0, %for.body8 ], [ %spec.select1, %if.then ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond6, !llvm.loop !12

for.end23:                                        ; preds = %for.cond6
  %cmp24 = icmp eq i32 %temp.0, -1
  br i1 %cmp24, label %if.end32, label %if.else

if.else:                                          ; preds = %for.end23
  %idxprom28 = sext i32 %tIndex.0 to i64
  %arrayidx29 = getelementptr inbounds [25 x i32], ptr %len, i64 0, i64 %idxprom28
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  br label %if.end32

if.end32:                                         ; preds = %for.end23, %if.else
  %add.sink = phi i32 [ %add, %if.else ], [ 1, %for.end23 ]
  %7 = getelementptr inbounds nuw [25 x i32], ptr %len, i64 0, i64 %indvars.iv7
  store i32 %add.sink, ptr %7, align 4, !tbaa !5
  %spec.select2 = call i32 @llvm.smax.i32(i32 %add.sink, i32 %ans.0)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond3, !llvm.loop !13

for.end42:                                        ; preds = %for.cond3
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call43, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %h) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
