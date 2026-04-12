; ModuleID = '<stdin>'
source_filename = "/tmp/tmphclkdo22.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %rep = alloca [300 x i8], align 16
  %sub = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 dereferenceable(300) %s) #7
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 dereferenceable(300) %rep) #7
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 dereferenceable(300) %sub) #7
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %s, i64 noundef 300)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !9, !invariant.load !8
  %cmp.i.i = icmp eq i32 %0, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then6.i36

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %1 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !22, !invariant.load !8
  %2 = add i64 %1, -301
  %or.cond.i = icmp ult i64 %2, -300
  br i1 %or.cond.i, label %if.then19.i, label %land.lhs.true.i15

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23, !invariant.load !8
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i15, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %land.lhs.true.i15

land.lhs.true.i15:                                ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %sub, i64 noundef 300)
  %_M_width.i1.i16 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i1.i16, align 8, !tbaa !22, !invariant.load !8
  %5 = add i64 %4, -301
  %or.cond.i19 = icmp ult i64 %5, -300
  br i1 %or.cond.i19, label %if.then19.i20, label %land.lhs.true.i43

if.then19.i20:                                    ; preds = %land.lhs.true.i15
  %_M_streambuf.i.i21 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %6 = load ptr, ptr %_M_streambuf.i.i21, align 8, !tbaa !23, !invariant.load !8
  %call25.i22 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
  %cmp.i2.i23 = icmp eq i32 %call25.i22, -1
  %conv.i24 = zext i1 %cmp.i2.i23 to i64
  %expval.i25 = call i64 @llvm.expect.i64(i64 noundef %conv.i24, i64 noundef 1)
  %tobool.not.i26 = icmp eq i64 %expval.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i43, label %if.then28.i27

if.then28.i27:                                    ; preds = %if.then19.i20
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %land.lhs.true.i43

if.then6.i36:                                     ; preds = %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %sub, i64 noundef 300)
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %rep, i64 noundef 300)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56

land.lhs.true.i43:                                ; preds = %if.then28.i27, %if.then19.i20, %land.lhs.true.i15
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(300) %rep, i64 noundef 300)
  %_M_width.i1.i44 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %7 = load i64, ptr %_M_width.i1.i44, align 8, !tbaa !22, !invariant.load !8
  %8 = add i64 %7, -301
  %or.cond.i47 = icmp ult i64 %8, -300
  br i1 %or.cond.i47, label %if.then19.i48, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56

if.then19.i48:                                    ; preds = %land.lhs.true.i43
  %_M_streambuf.i.i49 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %9 = load ptr, ptr %_M_streambuf.i.i49, align 8, !tbaa !23, !invariant.load !8
  %call25.i50 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %9)
  %cmp.i2.i51 = icmp eq i32 %call25.i50, -1
  %conv.i52 = zext i1 %cmp.i2.i51 to i64
  %expval.i53 = call i64 @llvm.expect.i64(i64 noundef %conv.i52, i64 noundef 1)
  %tobool.not.i54 = icmp eq i64 %expval.i53, 0
  br i1 %tobool.not.i54, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56, label %if.then28.i55

if.then28.i55:                                    ; preds = %if.then19.i48
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56: ; preds = %if.then6.i36, %land.lhs.true.i43, %if.then19.i48, %if.then28.i55
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(1) %sub) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56
  store i8 0, ptr %call7, align 1, !tbaa !31
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(300) %s) #9
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(300) %s, i64 noundef %call.i.i)
  %call.i.i63 = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(300) %rep) #9
  %call1.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(300) %rep, i64 noundef %call.i.i63)
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #8
  %add.ptr = getelementptr inbounds nuw i8, ptr %call7, i64 %call16
  br label %if.end

if.end:                                           ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %s.sink99 = phi ptr [ %add.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %s, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56 ]
  %call.i.i78 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s.sink99) #9
  %call1.i79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s.sink99, i64 noundef %call.i.i78)
  %vtable.i93 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i94 = getelementptr i8, ptr %vtable.i93, i64 -24
  %vbase.offset.i95 = load i64, ptr %vbase.offset.ptr.i94, align 8, !invariant.load !8
  %add.ptr.i96 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i95
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i96, i8 noundef signext 10)
  %call1.i97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i97)
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %sub) #9
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %rep) #9
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %s) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !32, !invariant.load !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !31, !invariant.load !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !5, !invariant.load !8
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !8
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !14, i64 32}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!10, !11, i64 16}
!23 = !{!24, !27, i64 232}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !25, i64 216, !12, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!25 = !{!"p1 _ZTSSo", !16, i64 0}
!26 = !{!"bool", !12, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!33, !12, i64 56}
!33 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !26, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!34 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!36 = !{!"p1 int", !16, i64 0}
!37 = !{!"p1 short", !16, i64 0}
