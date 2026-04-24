; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcsvu213f.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@num = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6searchPA5_ci(ptr nofree noundef readonly captures(none) %s, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %j, 1
  %idxprom = zext nneg i32 %j to i64
  br i1 %cmp, label %entry.split, label %for.end31

entry.split:                                      ; preds = %entry
  %0 = load i32, ptr @n, align 4
  %arrayidx = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry.split
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc29 ], [ 1, %entry.split ]
  %arrayidx3 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv15
  %2 = load i8, ptr %arrayidx3, align 1, !tbaa !5, !invariant.load !8
  %cmp6 = icmp eq i8 %1, %2
  br i1 %cmp6, label %for.cond7, label %for.inc29

for.cond7:                                        ; preds = %for.cond, %for.body10
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 1, %for.cond ]
  %count.0 = phi i32 [ %spec.select, %for.body10 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10

for.cond.cleanup9:                                ; preds = %for.cond7
  %cmp23 = icmp eq i32 %count.0, 0
  br i1 %cmp23, label %for.inc29, label %cleanup.cont

for.body10:                                       ; preds = %for.cond7
  %arrayidx14 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %idxprom, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !5, !invariant.load !8
  %arrayidx19 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv15, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  %cmp21.not = icmp eq i8 %3, %4
  %spec.select = select i1 %cmp21.not, i32 %count.0, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !9

for.inc29:                                        ; preds = %for.cond, %for.cond.cleanup9
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond

for.end31:                                        ; preds = %entry
  %idxprom32 = sext i32 %j to i64
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %for.cond.cleanup9, %for.end31
  %idxprom32.sink = phi i64 [ %idxprom32, %for.end31 ], [ %indvars.iv15, %for.cond.cleanup9 ]
  %arrayidx33 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %idxprom32.sink
  %5 = load i32, ptr %arrayidx33, align 4, !tbaa !12
  %inc16.i.i5 = add nsw i32 %5, 1
  store i32 %inc16.i.i5, ptr %arrayidx33, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %s = alloca [200 x [5 x i8]], align 16
  %c = alloca [500 x i8], align 16
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 dereferenceable(1000) %s) #8
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull %c) #8
  %call1 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 1, %entry ]
  %call2 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %sext.mask = and i32 %call2, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp.not, label %for.cond.preheader, label %while.cond

for.cond.preheader:                               ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.cleanup7
  %j.0 = phi i32 [ %inc16.i.i4, %for.cond.cleanup7 ], [ 1, %for.cond.preheader ]
  %1 = load i32, ptr @n, align 4, !tbaa !12
  %cmp4.not = icmp sgt i32 %1, %0
  br i1 %cmp4.not, label %if.else, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.cond5.preheader.split, label %for.cond.cleanup7

for.cond5.preheader.split:                        ; preds = %for.cond5.preheader
  %idxprom12.le = zext nneg i32 %j.0 to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader.split, %for.cond5
  %indvars.iv28 = phi i64 [ 0, %for.cond5.preheader.split ], [ %indvars.iv.next29, %for.cond5 ]
  %2 = add nuw nsw i64 %indvars.iv28, %idxprom12.le
  %arrayidx11 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx11, align 1, !tbaa !5, !invariant.load !8
  %arrayidx15 = getelementptr inbounds nuw [200 x [5 x i8]], ptr %s, i64 0, i64 %idxprom12.le, i64 %indvars.iv28
  store i8 %3, ptr %arrayidx15, align 1, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond5

for.cond.cleanup7:                                ; preds = %for.cond5.preheader
  call void @_Z6searchPA5_ci(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1000) %s, i32 noundef %j.0) #8
  %inc16.i.i4 = add nuw nsw i32 %j.0, 1
  br label %for.cond

if.else:                                          ; preds = %for.cond
  %call39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call39, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond42

for.cond42:                                       ; preds = %if.end65, %if.else
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %if.end65 ], [ 1, %if.else ]
  %4 = load i32, ptr @n, align 4, !tbaa !12
  %sub43 = sub nsw i32 %0, %4
  %5 = sext i32 %sub43 to i64
  %cmp45.not = icmp sgt i64 %indvars.iv35, %5
  br i1 %cmp45.not, label %if.end70, label %for.body47

for.body47:                                       ; preds = %for.cond42
  %arrayidx49 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %indvars.iv35
  %6 = load i32, ptr %arrayidx49, align 4, !tbaa !12, !invariant.load !8
  %cmp50 = icmp eq i32 %6, 0
  br i1 %cmp50, label %for.cond53, label %if.end65

for.cond53:                                       ; preds = %for.body47, %for.body56
  %7 = phi i32 [ %.pre, %for.body56 ], [ %4, %for.body47 ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body56 ], [ 0, %for.body47 ]
  %cmp54 = icmp sgt i32 %7, 0
  br i1 %cmp54, label %for.body56, label %if.end65

for.body56:                                       ; preds = %for.cond53
  %arrayidx60 = getelementptr inbounds nuw [200 x [5 x i8]], ptr %s, i64 0, i64 %indvars.iv35, i64 %indvars.iv32
  %8 = load i8, ptr %arrayidx60, align 1, !tbaa !5, !invariant.load !8
  %call61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !12
  br label %for.cond53

if.end65:                                         ; preds = %for.cond53, %for.body47
  %call66 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond42, !llvm.loop !14

if.end70:                                         ; preds = %for.cond42
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %s) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !10, !11}
