; ModuleID = '<stdin>'
source_filename = "/tmp/tmplbadfpk4.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  %b = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %a, align 16, !tbaa !5
  store i32 %2, ptr %b, align 16, !tbaa !5
  %smax9 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %wide.trip.count10 = zext nneg i32 %smax9 to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %for.end
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc26 ], [ 1, %for.end ]
  %j.0 = phi i32 [ %j.1, %for.inc26 ], [ 1, %for.end ]
  %exitcond11.not = icmp eq i64 %indvars.iv5, %wide.trip.count10
  br i1 %exitcond11.not, label %for.cond29.preheader, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv5
  %smax = call i32 @llvm.smax.i32(i32 %j.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.cond29.preheader:                             ; preds = %for.cond4
  %sub = add nsw i32 %j.0, -1
  %smax15 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count16 = zext nneg i32 %smax15 to i64
  br label %for.cond29

for.cond7:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv2 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next3, %for.body9 ]
  %m.1 = phi i32 [ 0, %for.cond7.preheader ], [ %spec.select, %for.body9 ]
  %exitcond.not = icmp eq i64 %indvars.iv2, %wide.trip.count
  br i1 %exitcond.not, label %for.end17, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %arrayidx13 = getelementptr inbounds nuw [20000 x i32], ptr %b, i64 0, i64 %indvars.iv2
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %cmp14 = icmp eq i32 %3, %4
  %spec.select = select i1 %cmp14, i32 1, i32 %m.1
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond7, !llvm.loop !13

for.end17:                                        ; preds = %for.cond7
  %cmp18.not.not = icmp eq i32 %m.1, 0
  br i1 %cmp18.not.not, label %if.then19, label %for.inc26

if.then19:                                        ; preds = %for.end17
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %idxprom22 = sext i32 %j.0 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom22
  store i32 %5, ptr %arrayidx23, align 4, !tbaa !5
  %inc24 = add nsw i32 %j.0, 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.end17, %if.then19
  %j.1 = phi i32 [ %inc24, %if.then19 ], [ %j.0, %for.end17 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond4, !llvm.loop !14

for.cond29:                                       ; preds = %for.cond29.preheader, %for.inc36
  %indvars.iv12 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next13, %for.inc36 ]
  %exitcond17.not = icmp eq i64 %indvars.iv12, %wide.trip.count16
  br i1 %exitcond17.not, label %for.end38, label %for.inc36

for.inc36:                                        ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw [20000 x i32], ptr %b, i64 0, i64 %indvars.iv12
  %6 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call34, i8 noundef signext 32)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond29, !llvm.loop !15

for.end38:                                        ; preds = %for.cond29
  %idxprom40 = sext i32 %sub to i64
  %arrayidx41 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom40
  %7 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !12
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call42, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
