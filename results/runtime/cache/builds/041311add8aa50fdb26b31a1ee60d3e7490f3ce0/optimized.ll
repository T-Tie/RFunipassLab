; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4moqfj30.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %words = alloca [1000 x [40 x i8]], align 16
  %len = alloca [1000 x i32], align 16
  %line = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %words) #7
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %if.else34.i, label %for.end

if.else34.i:                                      ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [40 x i8]], ptr %words, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %len) #7
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.end
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body5 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond.not, label %for.end14, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [1000 x [40 x i8]], ptr %words, i64 0, i64 %indvars.iv44
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx7) #8
  %conv = trunc i64 %call9 to i32
  %arrayidx11 = getelementptr inbounds nuw [1000 x i32], ptr %len, i64 0, i64 %indvars.iv44
  store i32 %conv, ptr %arrayidx11, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond3, !llvm.loop !12

for.end14:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %line) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %line, i8 0, i64 400, i1 false)
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %words) #7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %words, i64 noundef %call.i.i)
  %2 = load i32, ptr %len, align 16, !tbaa !5
  store i32 %2, ptr %line, align 16, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc51, %for.end14
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc51 ], [ 1, %for.end14 ]
  %j.0 = phi i32 [ %j.1, %for.inc51 ], [ 0, %for.end14 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp21 = icmp slt i64 %indvars.iv48, %4
  br i1 %cmp21, label %for.body22, label %for.end53

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %j.0 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %line, i64 0, i64 %idxprom23
  %5 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx26 = getelementptr inbounds nuw [1000 x i32], ptr %len, i64 0, i64 %indvars.iv48
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add = add i32 %6, %5
  %cmp28 = icmp slt i32 %add, 80
  br i1 %cmp28, label %if.then, label %if.else

if.then:                                          ; preds = %for.body22
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %arrayidx31 = getelementptr inbounds nuw [1000 x [40 x i8]], ptr %words, i64 0, i64 %indvars.iv48
  %call.i.i23 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx31) #7
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx31, i64 noundef %call.i.i23)
  %add39 = add nsw i32 %add, 1
  store i32 %add39, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc51

if.else:                                          ; preds = %for.body22
  %vtable.i35 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i36 = getelementptr i8, ptr %vtable.i35, i64 -24
  %vbase.offset.i37 = load i64, ptr %vbase.offset.ptr.i36, align 8
  %add.ptr.i38 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i37
  %call.i39 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i38, i8 noundef signext 10)
  %call1.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i39)
  %call.i.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i40)
  %arrayidx42 = getelementptr inbounds nuw [1000 x [40 x i8]], ptr %words, i64 0, i64 %indvars.iv48
  %call.i.i29 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx42) #7
  %call1.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i41, ptr noundef nonnull %arrayidx42, i64 noundef %call.i.i29)
  %inc45 = add nsw i32 %j.0, 1
  %idxprom48 = sext i32 %inc45 to i64
  %arrayidx49 = getelementptr inbounds [100 x i32], ptr %line, i64 0, i64 %idxprom48
  %7 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %add50 = add nsw i32 %7, %6
  store i32 %add50, ptr %arrayidx49, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %if.then, %if.else
  %j.1 = phi i32 [ %j.0, %if.then ], [ %inc45, %if.else ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond20, !llvm.loop !15

for.end53:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %line) #7
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %words) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
