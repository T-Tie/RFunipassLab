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
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i24 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [10000 x [50 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 500000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(500000) %a, i8 0, i64 500000, i1 false)
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %if.then9, %entry
  %i.0.ph.ph = phi i32 [ %inc, %if.then9 ], [ 0, %entry ]
  %.ph = phi i1 [ false, %if.then9 ], [ true, %entry ]
  %idxprom = zext nneg i32 %i.0.ph.ph to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %if.else12
  %j.0.ph = phi i32 [ %inc13, %if.else12 ], [ 0, %while.cond.outer.outer ]
  %0 = phi i1 [ true, %if.else12 ], [ %.ph, %while.cond.outer.outer ]
  %1 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i21 = tail call i32 @getc(ptr noundef %1)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.then5
  %count.0 = phi i1 [ false, %if.then5 ], [ %0, %while.cond.outer ]
  %c.0.in = phi i32 [ %call.i20, %if.then5 ], [ %call.i21, %while.cond.outer ]
  %trunc = trunc i32 %c.0.in to i8
  switch i8 %trunc, label %if.else12 [
    i8 10, label %for.cond.preheader
    i8 32, label %if.then
  ]

for.cond.preheader:                               ; preds = %while.cond
  %wide.trip.count = zext nneg i32 %i.0.ph.ph to i64
  br label %for.cond

if.then:                                          ; preds = %while.cond
  br i1 %count.0, label %if.then9, label %if.then5

if.then5:                                         ; preds = %if.then
  %2 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i20 = tail call i32 @getc(ptr noundef %2)
  br label %while.cond, !llvm.loop !10

if.then9:                                         ; preds = %if.then
  %inc = add nuw nsw i32 %i.0.ph.ph, 1
  br label %while.cond.outer.outer, !llvm.loop !10

if.else12:                                        ; preds = %while.cond
  %inc13 = add nuw nsw i32 %j.0.ph, 1
  %idxprom14 = zext nneg i32 %j.0.ph to i64
  %arrayidx15 = getelementptr inbounds nuw [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom, i64 %idxprom14
  store i8 %trunc, ptr %arrayidx15, align 1, !tbaa !13
  br label %while.cond.outer, !llvm.loop !10

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %indvars.iv43 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next44, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv43, %wide.trip.count
  br i1 %exitcond.not, label %for.cond38.preheader, label %for.cond20

for.cond38.preheader:                             ; preds = %for.cond
  %idxprom39 = zext nneg i32 %i.0.ph.ph to i64
  br label %for.cond38

for.cond20:                                       ; preds = %for.cond, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.cond ]
  %arrayidx24 = getelementptr inbounds nuw [10000 x [50 x i8]], ptr %a, i64 0, i64 %indvars.iv43, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx24, align 1, !tbaa !13
  %cmp26.not = icmp eq i8 %3, 0
  br i1 %cmp26.not, label %for.end, label %for.body27

for.body27:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %3, ptr %__c.addr.i, align 1, !tbaa !13
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %4 = load i64, ptr %gep, align 8, !tbaa !16
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body27
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body27
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %3)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond20, !llvm.loop !27

for.end:                                          ; preds = %for.cond20
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond, !llvm.loop !28

for.cond38:                                       ; preds = %for.cond38.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36
  %indvars.iv47 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 ]
  %arrayidx42 = getelementptr inbounds nuw [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom39, i64 %indvars.iv47
  %5 = load i8, ptr %arrayidx42, align 1, !tbaa !13
  %cmp44.not = icmp eq i8 %5, 0
  br i1 %cmp44.not, label %for.end53, label %for.body45

for.body45:                                       ; preds = %for.cond38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i24)
  store i8 %5, ptr %__c.addr.i24, align 1, !tbaa !13
  %vtable.i25 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %gep39 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i27
  %6 = load i64, ptr %gep39, align 8, !tbaa !16
  %cmp.not.i30 = icmp eq i64 %6, 0
  br i1 %cmp.not.i30, label %if.end.i34, label %if.then.i31

if.then.i31:                                      ; preds = %for.body45
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i24, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

if.end.i34:                                       ; preds = %for.body45
  %call2.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36: ; preds = %if.then.i31, %if.end.i34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i24)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond38, !llvm.loop !29

for.end53:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 500000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !9, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !22, i64 48, !8, i64 64, !23, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !8, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !18, i64 8}
!23 = !{!"int", !8, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12}
!29 = distinct !{!29, !11, !12}
